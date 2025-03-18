// Add a service worker for processing Web Push notifications:
//
// self.addEventListener("push", async (events) => {
//   const { title, options } = await events.data.json()
//   events.waitUntil(self.registration.showNotification(title, options))
// })
//
// self.addEventListener("notificationclick", function(events) {
//   events.notification.close()
//   events.waitUntil(
//     clients.matchAll({ type: "window" }).then((clientList) => {
//       for (let i = 0; i < clientList.length; i++) {
//         let client = clientList[i]
//         let clientPath = (new URL(client.url)).pathname
//
//         if (clientPath == events.notification.data.path && "focus" in client) {
//           return client.focus()
//         }
//       }
//
//       if (clients.openWindow) {
//         return clients.openWindow(events.notification.data.path)
//       }
//     })
//   )
// })
