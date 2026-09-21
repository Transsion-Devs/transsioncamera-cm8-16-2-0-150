.class public final synthetic Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/TERecorder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/TERecorder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda19;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda19;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda19;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda19;->f$1:Z

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/TERecorder;->$r8$lambda$kcDtk2EQuE2YFIxF3lL74JggOOU(Lcom/ss/android/vesdk/TERecorder;Z)V

    return-void
.end method
