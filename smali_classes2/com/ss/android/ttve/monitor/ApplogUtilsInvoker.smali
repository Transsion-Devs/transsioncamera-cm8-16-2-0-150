.class public Lcom/ss/android/ttve/monitor/ApplogUtilsInvoker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeInit()V
.end method

.method public static onNativeCallback_onAppLogClientJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onClientEventJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static onNativeCallback_onAppLogJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEventJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
