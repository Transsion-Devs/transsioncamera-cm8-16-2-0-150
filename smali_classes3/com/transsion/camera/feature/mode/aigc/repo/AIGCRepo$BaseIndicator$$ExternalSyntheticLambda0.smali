.class public final synthetic Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->$r8$lambda$T-jnqLPMPnvdibqwFRz58-kNg8s(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method
