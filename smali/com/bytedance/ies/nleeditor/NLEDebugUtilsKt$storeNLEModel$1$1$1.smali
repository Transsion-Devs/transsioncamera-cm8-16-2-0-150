.class final Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1$1$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1$1$1;

    invoke-direct {v0}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1$1$1;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1$1$1;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1$1$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 107
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1$1$1;->invoke(Ljava/io/File;Ljava/io/IOException;)Lkotlin/io/OnErrorAction;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/io/File;Ljava/io/IOException;)Lkotlin/io/OnErrorAction;
    .registers 3

    const-string p0, "$noName_0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$noName_1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object p0, Lkotlin/io/OnErrorAction;->SKIP:Lkotlin/io/OnErrorAction;

    return-object p0
.end method
