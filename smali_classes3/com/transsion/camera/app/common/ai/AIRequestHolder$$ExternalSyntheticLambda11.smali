.class public final synthetic Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda11;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder$$ExternalSyntheticLambda11;->f$0:J

    check-cast p1, Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->$r8$lambda$nGX7Sb2AEDcsfPlEd7WnQag4g5g(JLcom/transsion/camera/app/common/ai/AIRequest;)Z

    move-result p0

    return p0
.end method
