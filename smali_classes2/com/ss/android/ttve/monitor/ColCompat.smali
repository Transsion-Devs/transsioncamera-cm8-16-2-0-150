.class public Lcom/ss/android/ttve/monitor/ColCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColCompat"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 21
    const-string p0, "ColCompat"

    const-string v0, "Montiro lib is disabled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 17
    const-string p0, "ColCompat"

    const-string p1, "Montiro lib is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;)V
    .registers 3

    .line 34
    const-string p0, "ColCompat"

    const-string p1, "Montiro lib is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    .line 30
    const-string p0, "ColCompat"

    const-string p1, "Montiro lib is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 26
    const-string p0, "ColCompat"

    const-string p1, "Montiro lib is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setServerUrl()V
    .registers 2

    .line 39
    const-string v0, "ColCompat"

    const-string v1, "Montiro lib is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
