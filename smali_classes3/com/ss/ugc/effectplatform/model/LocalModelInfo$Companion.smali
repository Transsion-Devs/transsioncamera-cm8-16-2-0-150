.class public final Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/model/LocalModelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 90
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getVersionOfModel(Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo$Companion;->getVersionOfModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getVersionOfModel(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 97
    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-object v6, v0

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 98
    const-string v7, "_v"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    const/4 p1, 0x0

    .line 99
    const-string v0, "size"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v6, v0, v1, v2, p1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 100
    const-string v7, "_size"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    goto :goto_35

    :cond_2b
    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 102
    const-string v7, "_model"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    :goto_35
    if-lez p0, :cond_57

    add-int/2addr p0, v2

    if-eqz v6, :cond_4f

    .line 107
    invoke-virtual {v6, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string p0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x5f

    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_57
    const-string p0, "1.0"

    return-object p0
.end method


# virtual methods
.method public final fromFile(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/LocalModelInfo;
    .registers 3

    const-string p0, "filePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance p0, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ss/ugc/effectplatform/model/LocalModelInfo;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
