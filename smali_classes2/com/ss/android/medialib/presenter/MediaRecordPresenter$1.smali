.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$RecordStopCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V
    .registers 2

    .line 807
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$1;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 2

    .line 810
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$1;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z
    invoke-static {v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$000(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 811
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$1;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;
    invoke-static {v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$100(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lorg/libsdl/app/BufferedAudioRecorder;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 812
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$1;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;
    invoke-static {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$100(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lorg/libsdl/app/BufferedAudioRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->markRecordStop()V

    :cond_19
    return-void
.end method
