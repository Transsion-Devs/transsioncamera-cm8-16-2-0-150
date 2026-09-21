.class public Lcom/gallery20/base/base_app/BaseApp;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 14
    invoke-static {p0}, Lcom/gallery20/base/base_app/BaseSdkKt;->initBaseSdk(Landroid/content/Context;)V

    return-void
.end method
