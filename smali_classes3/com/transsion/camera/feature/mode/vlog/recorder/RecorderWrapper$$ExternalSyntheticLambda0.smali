.class public final synthetic Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IVlogRecorderPolicy;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    return-void
.end method


# virtual methods
.method public final createMediaInfo(Landroid/media/CamcorderProfile;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->createMediaInfo(Landroid/media/CamcorderProfile;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object p0

    return-object p0
.end method
