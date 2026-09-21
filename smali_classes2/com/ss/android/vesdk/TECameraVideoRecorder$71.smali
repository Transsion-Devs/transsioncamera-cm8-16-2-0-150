.class Lcom/ss/android/vesdk/TECameraVideoRecorder$71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/listener/SmallWindowSnapshotListener;


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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 5301
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$71;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$71;->val$listener:Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$71;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .registers 4

    if-gez p1, :cond_e

    .line 5305
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$71;->val$listener:Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;->onResult(Landroid/graphics/Bitmap;I)V

    .line 5306
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$71;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    .line 5308
    :cond_e
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$71;->val$listener:Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$71;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, p0, p1}, Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;->onResult(Landroid/graphics/Bitmap;I)V

    return-void
.end method
