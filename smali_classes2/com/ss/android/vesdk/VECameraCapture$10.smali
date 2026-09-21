.class Lcom/ss/android/vesdk/VECameraCapture$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;


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

    .line 1419
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$10;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iput-object p2, p0, Lcom/ss/android/vesdk/VECameraCapture$10;->val$veFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocus(IILjava/lang/String;)V
    .registers 4

    .line 1422
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$10;->val$veFocusSettings:Lcom/ss/android/vesdk/VEFocusSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEFocusSettings;->getFocusCallback()Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VEFocusSettings$IVEFocusCallback;->onFocus(IILjava/lang/String;)V

    return-void
.end method
