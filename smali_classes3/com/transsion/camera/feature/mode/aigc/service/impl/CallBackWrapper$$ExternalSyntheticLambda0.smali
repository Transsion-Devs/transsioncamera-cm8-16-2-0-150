.class public final synthetic Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    return-void
.end method


# virtual methods
.method public final onProgress(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->onProgress(I)V

    return-void
.end method
