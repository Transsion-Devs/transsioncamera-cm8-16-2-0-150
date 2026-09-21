.class public final synthetic Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/utils/CustomConfigUtil;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/utils/CustomConfigUtil;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/utils/CustomConfigUtil;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/utils/CustomConfigUtil;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ConfigFlow;->$r8$lambda$rHhz3jeUa_j0OqGacfc2XZeWYyE(Lcom/transsion/camera/utils/CustomConfigUtil;I)I

    move-result p0

    return p0
.end method
