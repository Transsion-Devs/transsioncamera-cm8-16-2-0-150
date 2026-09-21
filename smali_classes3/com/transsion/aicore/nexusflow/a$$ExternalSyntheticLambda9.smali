.class public final synthetic Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda9;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$$ExternalSyntheticLambda9;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/transsion/aicore/nexusflow/a;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
