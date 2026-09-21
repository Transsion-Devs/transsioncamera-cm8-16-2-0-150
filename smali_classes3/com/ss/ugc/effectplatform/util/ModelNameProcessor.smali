.class public final Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;->INSTANCE:Lcom/ss/ugc/effectplatform/util/ModelNameProcessor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFullNameFromModelInfo(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;
    .registers 3

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_v"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_size"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_md5"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfoKt;->getMD5(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".model"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMD5OfModel(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string p0, "sourceStr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const-string p0, "md5"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    return-object v2

    :cond_11
    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 81
    const-string v4, "md5"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    .line 82
    const-string v4, "_model"

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    add-int/lit8 p0, p0, 0x3

    .line 85
    :try_start_24
    invoke-virtual {v3, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    return-object v2
.end method

.method public final getNameOfModel(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string p0, "sourceStr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 24
    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    .line 25
    sget-object p1, Lbytekn/foundation/utils/StringExtension;->Companion:Lbytekn/foundation/utils/StringExtension$Companion;

    const-string v1, "_v[0-9]"

    invoke-virtual {p1, v0, v1}, Lbytekn/foundation/utils/StringExtension$Companion;->lastIndexOfRegex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 26
    sget-object v2, Lcom/ss/ugc/effectplatform/util/StringUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/StringUtil;

    add-int/lit8 v3, p0, 0x1

    invoke-virtual {v2, v0, v3, v1}, Lcom/ss/ugc/effectplatform/util/StringUtil;->substringSafetyCheck(Ljava/lang/String;II)Z

    move-result v2

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eqz v2, :cond_2c

    .line 27
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 29
    :cond_2c
    const-string v1, "\\.model|_model|\\.dat"

    invoke-virtual {p1, v0, v1}, Lbytekn/foundation/utils/StringExtension$Companion;->lastIndexOfRegex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3e

    if-le p1, p0, :cond_3e

    .line 31
    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 34
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSizeOfModel(Ljava/lang/String;)I
    .registers 11

    const-string p0, "sourceStr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-string p0, "size"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    return v0

    :cond_11
    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 59
    const-string v4, "size"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    .line 60
    const-string p1, "md5"

    invoke-static {v3, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 61
    sget-object p1, Lbytekn/foundation/utils/StringExtension;->Companion:Lbytekn/foundation/utils/StringExtension$Companion;

    const-string v0, "_md5"

    invoke-virtual {p1, v3, v0}, Lbytekn/foundation/utils/StringExtension$Companion;->lastIndexOfRegex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_35

    .line 63
    :cond_2d
    sget-object p1, Lbytekn/foundation/utils/StringExtension;->Companion:Lbytekn/foundation/utils/StringExtension$Companion;

    const-string v0, "\\.model|_model|\\.dat"

    invoke-virtual {p1, v3, v0}, Lbytekn/foundation/utils/StringExtension$Companion;->lastIndexOfRegex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_35
    const/4 v0, -0x1

    if-lt p0, p1, :cond_39

    return v0

    :cond_39
    add-int/lit8 p0, p0, 0x4

    .line 69
    invoke-virtual {v3, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    :try_start_44
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_49

    return p0

    :catch_49
    return v0
.end method

.method public final getVersionOfModel(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string p0, "sourceStr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 44
    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 45
    const-string v7, "_v"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    .line 46
    sget-object p1, Lbytekn/foundation/utils/StringExtension;->Companion:Lbytekn/foundation/utils/StringExtension$Companion;

    const-string v1, "\\.model|_model|\\.dat"

    invoke-virtual {p1, v0, v1}, Lbytekn/foundation/utils/StringExtension$Companion;->lastIndexOfRegex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p0, :cond_30

    add-int/lit8 p0, p0, 0x2

    .line 49
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 51
    :cond_30
    const-string p0, "1.0"

    return-object p0
.end method

.method public final isBigVersionEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const-string p0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const-string/jumbo v0, "version1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "version2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4d

    invoke-virtual {v0, p2}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_4d

    .line 96
    :cond_1e
    invoke-virtual {v0, p1, p2}, Lcom/ss/ugc/effectplatform/util/TextUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 p0, 0x1

    return p0

    .line 99
    :cond_26
    :try_start_26
    const-string v4, "."

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    invoke-virtual {v3, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const-string v4, "."

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p1, p2}, Lcom/ss/ugc/effectplatform/util/TextUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4d} :catch_4d

    :catch_4d
    :cond_4d
    :goto_4d
    return v2
.end method
