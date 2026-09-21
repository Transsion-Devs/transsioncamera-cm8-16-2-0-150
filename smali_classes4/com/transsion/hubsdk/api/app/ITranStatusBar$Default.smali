.class public Lcom/transsion/hubsdk/api/app/ITranStatusBar$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/app/ITranStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/app/ITranStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public customGesturesEnable(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public customNotificationStyle(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public customPanelEnable(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    return-void
.end method

.method public enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onDestoryCallback(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    return-void
.end method
