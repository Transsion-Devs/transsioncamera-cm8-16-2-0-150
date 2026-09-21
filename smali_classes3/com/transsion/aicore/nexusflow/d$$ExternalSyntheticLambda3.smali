.class public final synthetic Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda3;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda3;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda3;->f$0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda3;->f$2:Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/os/Handler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function0;Landroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
