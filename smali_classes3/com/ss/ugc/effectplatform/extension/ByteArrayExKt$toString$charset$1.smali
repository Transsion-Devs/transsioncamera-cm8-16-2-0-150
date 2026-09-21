.class final Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt$toString$charset$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt;->toString([BIILbytekn/foundation/io/file/ContentEncoding;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $contentEncoding:Lbytekn/foundation/io/file/ContentEncoding;


# direct methods
.method constructor <init>(Lbytekn/foundation/io/file/ContentEncoding;)V
    .registers 2

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt$toString$charset$1;->$contentEncoding:Lbytekn/foundation/io/file/ContentEncoding;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt$toString$charset$1;->invoke()Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/nio/charset/Charset;
    .registers 2

    .line 11
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt$toString$charset$1;->$contentEncoding:Lbytekn/foundation/io/file/ContentEncoding;

    sget-object v0, Lcom/ss/ugc/effectplatform/extension/ByteArrayExKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    .line 13
    sget-object p0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0

    .line 12
    :cond_10
    sget-object p0, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    return-object p0
.end method
