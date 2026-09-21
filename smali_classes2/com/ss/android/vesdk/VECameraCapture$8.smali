.class Lcom/ss/android/vesdk/VECameraCapture$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/ITECameraArea$ITECameraFocusArea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VECameraCapture;->convert(Lcom/ss/android/vesdk/VEFocusSettings;)Lcom/ss/android/ttvecamera/TEFocusSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VECameraCapture;

.field final synthetic val$veFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VECameraCapture;Lcom/ss/android/vesdk/VEFocusSettings;)V
    .registers 3

    .line 1403
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$8;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iput-object p2, p0, Lcom/ss/android/vesdk/VECameraCapture$8;->val$veFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateArea(IIIIIZ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$8;->val$veFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEFocusSettings;->getCameraFocusArea()Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/vesdk/camera/IVECameraArea$IVECameraFocusArea;->calculateArea(IIIIIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
