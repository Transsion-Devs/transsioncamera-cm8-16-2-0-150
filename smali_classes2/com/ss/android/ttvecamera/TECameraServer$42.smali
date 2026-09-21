.class Lcom/ss/android/ttvecamera/TECameraServer$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->setAperture(Lcom/ss/android/ttvecamera/TECameraCapture;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$aperture:F

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;F)V
    .registers 4

    .line 2023
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$42;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$42;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$42;->val$aperture:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2026
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$42;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$42;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$42;->val$aperture:F

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->setAperture(Lcom/ss/android/ttvecamera/TECameraCapture;F)V

    return-void
.end method
