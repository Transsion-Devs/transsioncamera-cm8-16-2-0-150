.class public final Lcom/bytedance/ies/cutsame/veadapter/DataKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 13
    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 1
    sget-object v0, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object v0
.end method
