.class public final synthetic Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;IIZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;->f$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;->f$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->$r8$lambda$XVKkS6RBMq8MQFgnWfae6_Tvh9c(Lcom/ss/android/vesdk/TECameraVideoRecorder;IIZ)V

    return-void
.end method
