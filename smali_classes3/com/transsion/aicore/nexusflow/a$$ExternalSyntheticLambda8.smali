.class public final synthetic Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/transsion/aicore/nexusflow/a;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda8;->f$0:Lcom/transsion/aicore/nexusflow/a;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda8;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda8;->f$0:Lcom/transsion/aicore/nexusflow/a;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda8;->f$2:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/aicore/nexusflow/a;->a(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
