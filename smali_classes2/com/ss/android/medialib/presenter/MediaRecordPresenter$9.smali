.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotHDScreen(Z[IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;ZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

.field final synthetic val$veFrameCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;)V
    .registers 3

    .line 2407
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$9;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iput-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$9;->val$veFrameCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 5

    if-eqz p1, :cond_10

    .line 2410
    array-length v0, p1

    if-lez v0, :cond_10

    if-lez p2, :cond_10

    if-lez p3, :cond_10

    .line 2411
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$9;->val$veFrameCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;->onResult([IIII)V

    return-void

    .line 2413
    :cond_10
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$9;->val$veFrameCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;

    const/4 p1, 0x0

    const/16 v0, -0xbb8

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;->onResult([IIII)V

    return-void
.end method
