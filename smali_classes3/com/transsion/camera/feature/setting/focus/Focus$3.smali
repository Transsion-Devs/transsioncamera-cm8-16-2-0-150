.class Lcom/transsion/camera/feature/setting/focus/Focus$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/focus/Focus;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V
    .registers 2

    .line 723
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$3;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingEnd()V
    .registers 2

    .line 732
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$3;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    .line 733
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->onRecordingStatusChanged()V

    return-void
.end method

.method public onRecordingStart()V
    .registers 2

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$3;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    .line 727
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->onRecordingStatusChanged()V

    return-void
.end method
