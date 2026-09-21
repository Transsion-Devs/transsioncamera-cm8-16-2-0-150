.class Lcom/ss/android/vesdk/VECameraCapture$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraSettings$CameraCapabilitiesForBytebenchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VECameraCapture;->getCameraCapabilitiesForBytebench()V
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

    .line 1174
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$7;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraCapabilities(Lorg/json/JSONObject;)V
    .registers 2

    .line 1177
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$7;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    # invokes: Lcom/ss/android/vesdk/VECameraCapture;->reportToByteBench(Lorg/json/JSONObject;)V
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->access$000(Lcom/ss/android/vesdk/VECameraCapture;Lorg/json/JSONObject;)V

    return-void
.end method
