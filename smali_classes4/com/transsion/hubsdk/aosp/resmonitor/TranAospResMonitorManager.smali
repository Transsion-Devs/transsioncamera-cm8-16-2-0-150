.class public Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEventAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 4

    return-void
.end method

.method public getEventAsyncStatic(ILjava/lang/String;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 4

    return-void
.end method

.method public getEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .registers 3

    const/4 p0, 0x0

    .line 58
    new-array p0, p0, [Landroid/os/Bundle;

    return-object p0
.end method

.method public getEventBundleAsync(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 3

    return-void
.end method

.method public getEventBundleAsyncStatic(Landroid/os/Bundle;Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)V
    .registers 3

    return-void
.end method

.method public getEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .registers 3

    const/4 p0, 0x0

    .line 53
    new-array p0, p0, [Landroid/os/Bundle;

    return-object p0
.end method

.method public getEventStatic(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public regCallback(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .registers 7

    return-void
.end method

.method public regCallbackStatic(ILcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;IIII)V
    .registers 7

    return-void
.end method

.method public setEvent(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setEventBundle(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public setEventBundleStatic(Landroid/os/Bundle;[Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public setEventStatic(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public unregCallback(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 2

    return-void
.end method

.method public unregCallbackStatic(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)V
    .registers 2

    return-void
.end method
