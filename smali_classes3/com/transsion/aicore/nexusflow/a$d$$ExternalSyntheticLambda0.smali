.class public final synthetic Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/transsion/aicore/nexusflow/a;

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;JLandroid/os/Bundle;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/aicore/nexusflow/a;

    iput-wide p4, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$3:J

    iput-object p6, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$4:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/aicore/nexusflow/a;

    iget-wide v3, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$3:J

    iget-object v5, p0, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;->f$4:Landroid/os/Bundle;

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    invoke-static/range {v0 .. v6}, Lcom/transsion/aicore/nexusflow/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;JLandroid/os/Bundle;Landroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
