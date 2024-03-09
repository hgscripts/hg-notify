// Default settings for the notifications
const defaults = {
    status: 'success',
    title: '',
    text: '',
    effect: 'slide',
    speed: 300,
    customClass: '',
    showIcon: false,
    customIcon: '',
    showCloseButton: true,
    autoclose: true,
    autotimeout: 3000,
    notificationsGap: 20,
    notificationsPadding: 20,
    type: 'outline',
    position: 'right top',
    audioVolume: 0.2
};

let allNotifications = [];
window.addEventListener("message", (data) => {
    data = data.data;
    if (data.type == "notification") {
        const notification = {
            status: data.notification.status || defaults.status, // Success, Warning, Error, Info
            title: data.notification.title, // Title of the notification
            text: data.notification.text, // Text of the notification
            effect: data.notification.effect || defaults.effect, // Slide, Fade
            speed: data.notification.speed > 0 ? data.notification.speed : defaults.speed, // Speed of the notification in ms, higher is slower
            customClass: data.notification.customClass || defaults.customClass, // Custom class for the notification, define your classes in style.css
            showIcon: data.notification.showIcon === true ? true : defaults.showIcon, // Show or hide the icon
            customIcon: data.notification.icon ? `<i class="fa-${data.notification.iconType || "regular"} fa-${data.notification.icon}"></i>` : defaults.customIcon, // Custom icon for the notification, https://fontawesome.com/search?o=r&m=free, defaults to regular if no icon type is provided
            showCloseButton: false, // Show or hide the close button, keep this false because there is no way to close the notification without NUI Focus.
            autoclose: true, // Keep true as there is no way to close the notification without NUI Focus.
            autotimeout: data.notification.autotimeout > 0 ? data.notification.autotimeout : defaults.autotimeout, // Time in ms before the notification closes
            notificationsGap: data.notification.gap || defaults.notificationsGap, // Gap between notifications
            notificationsPadding: data.notification.padding || defaults.notificationsPadding, // Padding of the notifications
            type: data.notification.type || defaults.type, // Outline, Fill
            position: data.notification.position || defaults.position, // Position of the notification, Combine x and y position. 'left', 'right', 'top', 'bottom', 'x-center', 'y-center' or use only 'center' to center both x and y
        };
        if (!data.notification.title && !data.notification.text) {
            notification.title = "Beep Boop, I'm a notification"; // Just in case a notification is sent without a title and text
        }
        let notif = new Notify(notification); // Create/Show the notification

        if (data.notification.audio) {
            audio = null;
            if (data.notification.audio.includes("http") || data.notification.audio.includes("www")) { // If the audio is a URL
                audio = new Audio(data.notification.audio); // Create a new audio element
            }
            else {
                audio = new Audio('./assets/' + data.notification.audio+".mp3"); // Else, play an mp3 from the assets folder
            }
            audio.volume = defaults.audioVolume;
            setTimeout(() => {
                audio.play();
            }, notification.speed); // Play the audio after the notification has been fully shown
        }
        allNotifications.push(notif); // Add the notification to the array of all notifications, so we can close them all at once.
    } else if (data.type == "clear") {
        //Clear all notifications
        allNotifications.forEach(notif => notif.close());
    }
})