.class public final synthetic Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/TERecorder;

.field public final synthetic f$1:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda27;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda27;->f$1:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda27;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda27;->f$1:Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/TERecorder;->$r8$lambda$8t_GGR1_pJDLGvI6lKf-FKPCvCg(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    return-void
.end method
