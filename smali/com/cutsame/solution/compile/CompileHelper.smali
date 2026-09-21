.class public final Lcom/cutsame/solution/compile/CompileHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/compile/CompileHelper;

.field public static bps:Lkotlin/jvm/functions/Function1; = null

.field public static fps:I = 0x1e

.field public static gopSize:I = 0x23

.field public static hwEncoder:Z = true


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/compile/CompileHelper;

    invoke-direct {v0}, Lcom/cutsame/solution/compile/CompileHelper;-><init>()V

    sput-object v0, Lcom/cutsame/solution/compile/CompileHelper;->INSTANCE:Lcom/cutsame/solution/compile/CompileHelper;

    .line 1
    sget-object v0, Lcom/cutsame/solution/compile/CompileHelper$bps$1;->INSTANCE:Lcom/cutsame/solution/compile/CompileHelper$bps$1;

    sput-object v0, Lcom/cutsame/solution/compile/CompileHelper;->bps:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculatorBps(II)I
    .registers 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 3
    sget-object p1, Lcom/cutsame/solution/compile/ExportResolution;->V_480P:Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {p1}, Lcom/cutsame/solution/compile/ExportResolution;->getWidth()I

    move-result p2

    if-gt p0, p2, :cond_11

    invoke-virtual {p1}, Lcom/cutsame/solution/compile/ExportResolution;->getLevel()I

    move-result p0

    goto :goto_49

    .line 4
    :cond_11
    sget-object p1, Lcom/cutsame/solution/compile/ExportResolution;->V_720P:Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {p1}, Lcom/cutsame/solution/compile/ExportResolution;->getWidth()I

    move-result p2

    if-gt p0, p2, :cond_1e

    invoke-virtual {p1}, Lcom/cutsame/solution/compile/ExportResolution;->getLevel()I

    move-result p0

    goto :goto_49

    .line 5
    :cond_1e
    sget-object p1, Lcom/cutsame/solution/compile/ExportResolution;->V_1080P:Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {p1}, Lcom/cutsame/solution/compile/ExportResolution;->getWidth()I

    move-result p2

    if-gt p0, p2, :cond_2b

    invoke-virtual {p1}, Lcom/cutsame/solution/compile/ExportResolution;->getLevel()I

    move-result p0

    goto :goto_49

    .line 6
    :cond_2b
    sget-object p2, Lcom/cutsame/solution/compile/ExportResolution;->V_2K:Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {p2}, Lcom/cutsame/solution/compile/ExportResolution;->getWidth()I

    move-result v0

    if-gt p0, v0, :cond_38

    invoke-virtual {p2}, Lcom/cutsame/solution/compile/ExportResolution;->getLevel()I

    move-result p0

    goto :goto_49

    .line 7
    :cond_38
    sget-object p2, Lcom/cutsame/solution/compile/ExportResolution;->V_4K:Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {p2}, Lcom/cutsame/solution/compile/ExportResolution;->getWidth()I

    move-result v0

    if-gt p0, v0, :cond_45

    invoke-virtual {p2}, Lcom/cutsame/solution/compile/ExportResolution;->getLevel()I

    move-result p0

    goto :goto_49

    .line 8
    :cond_45
    invoke-virtual {p1}, Lcom/cutsame/solution/compile/ExportResolution;->getLevel()I

    move-result p0

    .line 10
    :goto_49
    sget-object p1, Lcom/cutsame/solution/compile/CompileHelper;->bps:Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getFps()I
    .registers 1

    .line 1
    sget p0, Lcom/cutsame/solution/compile/CompileHelper;->fps:I

    return p0
.end method

.method public final getGopSize()I
    .registers 1

    .line 1
    sget p0, Lcom/cutsame/solution/compile/CompileHelper;->gopSize:I

    return p0
.end method

.method public final getHwEncoder()Z
    .registers 1

    .line 1
    sget-boolean p0, Lcom/cutsame/solution/compile/CompileHelper;->hwEncoder:Z

    return p0
.end method
