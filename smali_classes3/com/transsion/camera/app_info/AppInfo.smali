.class public abstract Lcom/transsion/camera/app_info/AppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static app:Landroid/app/Application;

.field private static appInterface:Lcom/transsion/camera/app_info/ICameraApplication;

.field public static res:Landroid/content/res/Resources;


# direct methods
.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 22
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    return-object v0
.end method

.method public static getRes()Landroid/content/res/Resources;
    .registers 1

    .line 28
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    .line 30
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 32
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getTopActivity()Landroid/app/Activity;
    .registers 1

    .line 25
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->appInterface:Lcom/transsion/camera/app_info/ICameraApplication;

    invoke-interface {v0}, Lcom/transsion/camera/app_info/ICameraApplication;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static setApp(Lcom/transsion/camera/app_info/ICameraApplication;)V
    .registers 1

    .line 13
    sput-object p0, Lcom/transsion/camera/app_info/AppInfo;->appInterface:Lcom/transsion/camera/app_info/ICameraApplication;

    .line 14
    invoke-interface {p0}, Lcom/transsion/camera/app_info/ICameraApplication;->getApplication()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    return-void
.end method
