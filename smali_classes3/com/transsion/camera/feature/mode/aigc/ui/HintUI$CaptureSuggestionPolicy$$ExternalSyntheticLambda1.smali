.class public final synthetic Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

.field public final synthetic f$1:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->$r8$lambda$ubfQCDpeWNmnFKP2Rditlm6OrVQ(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V

    return-void
.end method
