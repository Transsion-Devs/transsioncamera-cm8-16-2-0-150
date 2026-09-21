.class public Lcom/transsion/camera/manager/BaseImageryGuideManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;,
        Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterFragment()V
    .registers 1

    return-void
.end method

.method public exitImageryGuideFragment()V
    .registers 1

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .registers 4

    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setOnFragmentListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V
    .registers 2

    return-void
.end method

.method public setOnSwitchModeListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;)V
    .registers 2

    return-void
.end method

.method public supportModesEntry([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public unInit()V
    .registers 1

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
