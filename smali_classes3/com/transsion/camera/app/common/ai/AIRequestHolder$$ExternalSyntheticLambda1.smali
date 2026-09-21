.class public final synthetic Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ai/AIRequestHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequestHolder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    check-cast p1, Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->$r8$lambda$7YMJKlbKgOm03JRR5DbwuIeNtCg(Lcom/transsion/camera/app/common/ai/AIRequestHolder;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method
