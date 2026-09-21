.class public final synthetic Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda2;->f$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda2;->f$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->$r8$lambda$XSpg5ervixD1xca4_xUnYqtHrgw(Lcom/ss/android/vesdk/TECameraVideoRecorder;II)V

    return-void
.end method
