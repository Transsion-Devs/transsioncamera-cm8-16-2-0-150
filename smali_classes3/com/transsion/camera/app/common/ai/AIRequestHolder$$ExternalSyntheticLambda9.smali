.class public final synthetic Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda9;->f$0:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda9;->f$0:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    check-cast p1, Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->$r8$lambda$ByJLpTbTZFa8Ir97Ss5xEPYU1Ak(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;)V

    return-void
.end method
