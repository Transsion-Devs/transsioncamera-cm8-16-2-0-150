.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->attachAudioRecordingOberver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V
    .registers 2

    .line 3730
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$16;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .registers 4

    .line 3733
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$16;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    # setter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecording:Z
    invoke-static {v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$602(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Z)Z

    .line 3734
    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change audio recording state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$16;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecording:Z
    invoke-static {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$600(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 3730
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$16;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
