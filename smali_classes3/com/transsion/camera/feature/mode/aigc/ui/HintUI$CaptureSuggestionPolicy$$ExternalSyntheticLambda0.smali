.class public final synthetic Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

    check-cast p1, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->$r8$lambda$Unhq5ZoOltHks_7A6p_-xvO18CM(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)Z

    move-result p0

    return p0
.end method
