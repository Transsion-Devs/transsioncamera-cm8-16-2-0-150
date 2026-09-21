.class Lcom/transsion/camera/feature/setting/magicsky/MagicSky$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/magicsky/MagicSky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$1;->this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$1;->this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->sendSettingChangeRequest()V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 1

    return-void
.end method
