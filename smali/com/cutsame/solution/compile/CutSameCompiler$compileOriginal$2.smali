.class public final Lcom/cutsame/solution/compile/CutSameCompiler$compileOriginal$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/compile/CutSameCompiler;->compileOriginal(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;Lcom/cutsame/solution/compile/CompileParam;Lcom/bytedance/ies/nle/editor_jni/PairIntInt;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/CompileListener;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cutsame/solution/compile/CutSameCompiler$compileOriginal$2;->a:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;

    iput-object p2, p0, Lcom/cutsame/solution/compile/CutSameCompiler$compileOriginal$2;->b:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompileDone()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler$compileOriginal$2;->b:Ljava/lang/String;

    const-string v1, "onCompileDone outFilePath: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CutSameCompiler"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/compile/CutSameCompiler$compileOriginal$2;->a:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;

    invoke-interface {p0}, Lcom/bytedance/ies/cutsame/veadapter/CompileListener;->onCompileDone()V

    return-void
.end method

.method public onCompileError(IIFLjava/lang/String;)V
    .registers 7

    const-string v0, "onCompileError msg="

    .line 1
    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CutSameCompiler"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/compile/CutSameCompiler$compileOriginal$2;->a:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/CompileListener;->onCompileError(IIFLjava/lang/String;)V

    return-void
.end method

.method public onCompileProgress(F)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/compile/CutSameCompiler$compileOriginal$2;->a:Lcom/bytedance/ies/cutsame/veadapter/CompileListener;

    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/CompileListener;->onCompileProgress(F)V

    return-void
.end method
