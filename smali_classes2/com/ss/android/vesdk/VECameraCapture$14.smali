.class Lcom/ss/android/vesdk/VECameraCapture$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECameraCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VECameraCapture;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VECameraCapture;)V
    .registers 2

    .line 1827
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$14;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(IF)V
    .registers 3

    .line 1830
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$14;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mSATZoomListener:Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;

    if-eqz p0, :cond_9

    .line 1831
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;->onChange(IF)V

    :cond_9
    return-void
.end method
