.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
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
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .registers 22

    move-object/from16 v0, p1

    const-string v1, "responseHeaders"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_12
    if-ge v4, v1, :cond_d0

    .line 107
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    const-string v12, "Sec-WebSocket-Extensions"

    const/4 v13, 0x1

    invoke-static {v5, v12, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_23

    goto/16 :goto_cc

    .line 110
    :cond_23
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v14

    const/4 v5, 0x0

    .line 114
    :goto_28
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v5, v12, :cond_cc

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v15, 0x2c

    const/16 v17, 0x0

    move/from16 v16, v5

    .line 115
    invoke-static/range {v14 .. v19}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v5

    move/from16 v12, v16

    const/16 v15, 0x3b

    .line 116
    invoke-static {v14, v15, v12, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v2

    .line 117
    invoke-static {v14, v12, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v2, v13

    .line 121
    const-string v3, "permessage-deflate"

    invoke-static {v12, v3, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_ca

    if-eqz v6, :cond_54

    move v11, v13

    :cond_54
    :goto_54
    if-ge v2, v5, :cond_c6

    .line 127
    invoke-static {v14, v15, v2, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v3

    const/16 v6, 0x3d

    .line 128
    invoke-static {v14, v6, v2, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v6

    .line 129
    invoke-static {v14, v2, v6}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    if-ge v6, v3, :cond_73

    add-int/lit8 v6, v6, 0x1

    .line 131
    invoke-static {v14, v6, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    const-string v12, "\""

    invoke-static {v6, v12}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_74

    :cond_73
    const/4 v6, 0x0

    :goto_74
    add-int/lit8 v3, v3, 0x1

    .line 137
    const-string v12, "client_max_window_bits"

    invoke-static {v2, v12, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_8e

    if-eqz v7, :cond_81

    move v11, v13

    :cond_81
    if-eqz v6, :cond_88

    .line 139
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_89

    :cond_88
    const/4 v2, 0x0

    :goto_89
    move-object v7, v2

    if-nez v2, :cond_c4

    :cond_8c
    :goto_8c
    move v11, v13

    goto :goto_c4

    .line 142
    :cond_8e
    const-string v12, "client_no_context_takeover"

    invoke-static {v2, v12, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_9e

    if-eqz v8, :cond_99

    move v11, v13

    :cond_99
    if-eqz v6, :cond_9c

    move v11, v13

    :cond_9c
    move v8, v13

    goto :goto_c4

    .line 147
    :cond_9e
    const-string v12, "server_max_window_bits"

    invoke-static {v2, v12, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_b5

    if-eqz v9, :cond_a9

    move v11, v13

    :cond_a9
    if-eqz v6, :cond_b0

    .line 149
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_b1

    :cond_b0
    const/4 v2, 0x0

    :goto_b1
    move-object v9, v2

    if-nez v2, :cond_c4

    goto :goto_8c

    .line 152
    :cond_b5
    const-string v12, "server_no_context_takeover"

    invoke-static {v2, v12, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8c

    if-eqz v10, :cond_c0

    move v11, v13

    :cond_c0
    if-eqz v6, :cond_c3

    move v11, v13

    :cond_c3
    move v10, v13

    :cond_c4
    :goto_c4
    move v2, v3

    goto :goto_54

    :cond_c6
    move v6, v13

    :goto_c7
    move v5, v2

    goto/16 :goto_28

    :cond_ca
    move v11, v13

    goto :goto_c7

    :cond_cc
    :goto_cc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    .line 171
    :cond_d0
    new-instance v5, Lokhttp3/internal/ws/WebSocketExtensions;

    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    return-object v5
.end method
