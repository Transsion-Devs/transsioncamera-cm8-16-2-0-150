.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnPreviewDataCallbackListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;)V
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

    .line 3857
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$17;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewDataCallback(Ljava/nio/ByteBuffer;IIIJ)V
    .registers 14

    .line 3860
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$17;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mPreviewDataCallbackListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;
    invoke-static {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$700(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;->OnPreviewDataCallback(Ljava/nio/ByteBuffer;IIIJ)V

    return-void
.end method
