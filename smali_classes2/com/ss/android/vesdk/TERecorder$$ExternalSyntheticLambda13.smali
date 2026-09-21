.class public final synthetic Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/TERecorder;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;FF)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;->f$2:F

    iput p4, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;->f$2:F

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda13;->f$3:F

    invoke-static {v0, v1, v2, p0}, Lcom/ss/android/vesdk/TERecorder;->$r8$lambda$CC8swPcS_3ftc-ynZ3-gj-ZjtEA(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;FF)V

    return-void
.end method
