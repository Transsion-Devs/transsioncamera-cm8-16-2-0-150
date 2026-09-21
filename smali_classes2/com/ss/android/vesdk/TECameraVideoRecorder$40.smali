.class Lcom/ss/android/vesdk/TECameraVideoRecorder$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnPreviewRadioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->setPreviewRadioListener(Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;)V
    .registers 3

    .line 3657
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$40;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$40;->val$listener:Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(II)V
    .registers 4

    .line 3660
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$40;->val$listener:Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;

    invoke-static {}, Lcom/ss/android/vesdk/VEPreviewRadio;->values()[Lcom/ss/android/vesdk/VEPreviewRadio;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;->onInfo(Lcom/ss/android/vesdk/VEPreviewRadio;I)V

    return-void
.end method
