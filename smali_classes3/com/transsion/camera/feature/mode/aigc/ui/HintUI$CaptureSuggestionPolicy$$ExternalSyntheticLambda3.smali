.class public final synthetic Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->$r8$lambda$fc4jhq0I9Yijb5kCCFkH38D-sFQ(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)Z

    move-result p0

    return p0
.end method
