.class public final synthetic Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/transsion/aicore/nexusflow/a;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/aicore/nexusflow/a;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/aicore/nexusflow/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda1;->f$0:Z

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/aicore/nexusflow/a;

    invoke-static {v0, p0}, Lcom/transsion/aicore/nexusflow/d;->a(ZLcom/transsion/aicore/nexusflow/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
