# FiveM Notification system by HG Scripts 

## Discord:
https://discord.gg/Vn3Y2CP3n8

## Documentation:
 https://hgscripts.com/documentation/notify/about/

## Preview
![](https://i.imgur.com/weR5Nl9.png)

## Parameters:

| Parameter                                   | Type    | Values                                            | Default |
| :------------------------------------------ | :------ | :-------------------------------------------------| :-----: |
| `status`                                    | String  | `'error'`, `'warning'`, `'success'` `'info'`      | `null` |
| `title`                                     | String  |                                                   | `null` |
| `text`                                      | String  | You can send any type of html.                    | `null` |
| `customIcon`                                | String  | You can send any type of html.                    | `null` |
| `customClass`                               | String  |                                                   | `null` |
| `speed`                                     | Number  | transition-duration in milliseconds.              | `300`  |
| `effect`                                    | String  | `'fade'`, `'slide'`                               | `'fade'`|
| `showIcon`                                  | Boolean |                                                   | `true` |
| `showCloseButton`                           | Boolean |                                                   | `true` |
| `autoclose`                                 | Boolean |                                                   | `true` |
| `autotimeout` (with `autoclose: true`)      | Number  |                                                   | `3000` |
| `gap` (margin between notifications)        | Number  |                                                   | `20` |
| `distance` (distance to edges)              | Number  |                                                   | `20` |
| `type`                                      | String  | `'outline'`, `'filled'`                           | `'outline'`|


## Credits: 
Notification library used: [Simple-Notify](https://github.com/simple-notify/simple-notify)