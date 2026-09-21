.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/IVlog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/IVlog$Attribution;,
        Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
    }
.end annotation


# static fields
.field public static final CUT_SAME:I = 0x2

.field public static final DRAFT:I = 0x0

.field public static final EDITOR:I = 0x2

.field public static final FREE_SHOT:I = 0x1

.field public static final HOME:I = 0x1

.field public static final HOME_PAGE:I


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract enterCutSameRecorderAgain(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
.end method

.method public abstract enterFreeShotRecorderAgain(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enterHomePage()V
.end method

.method public abstract init()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onBackPressedForUI()Z
.end method

.method public abstract onCameraStateChanged(I)V
.end method

.method public abstract onFirstSteadyFrame()V
.end method

.method public abstract onSettingReady()V
.end method

.method public abstract onShutterClick()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateBatteryStatus(II)V
.end method

.method public abstract updateCurrentPage(I)V
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param
.end method

.method public abstract updateOrientation(I)V
.end method
