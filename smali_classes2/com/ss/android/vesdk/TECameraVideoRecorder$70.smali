.class Lcom/ss/android/vesdk/TECameraVideoRecorder$70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->getSmallWindowSnapshot(IILcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;)V
    .registers 3

    .line 5288
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$70;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$70;->val$listener:Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/graphics/Bitmap;I)V
    .registers 4

    if-gez p2, :cond_c

    .line 5292
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$70;->val$listener:Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;->onResult(Landroid/graphics/Bitmap;I)V

    .line 5293
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    .line 5295
    :cond_c
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$70;->val$listener:Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;->onResult(Landroid/graphics/Bitmap;I)V

    return-void
.end method
