.class public final Lcom/ss/ugc/effectplatform/util/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/ss/ugc/effectplatform/util/FileUtils;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/FileUtils;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic rename$default(Lcom/ss/ugc/effectplatform/util/FileUtils;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 140
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/util/FileUtils;->rename(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic streamToFile$default(Lcom/ss/ugc/effectplatform/util/FileUtils;Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)J
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_6

    const-wide/16 p3, 0x0

    :cond_6
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_c

    const/4 p5, 0x0

    :cond_c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ugc/effectplatform/util/FileUtils;->streamToFile(Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;JLkotlin/jvm/functions/Function2;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final addPathSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string p0, "suffix"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_41

    .line 133
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v0}, Lbytekn/foundation/io/file/FileManager;->getSeparator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, p0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lbytekn/foundation/io/file/FileManager;->getSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_41
    return-object p0
.end method

.method public final copyStream(Lbytekn/foundation/io/file/FileInputStream;Lbytekn/foundation/io/file/FileOutputStream;JLkotlin/jvm/functions/Function2;)J
    .registers 16

    const-string p0, "source"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sink"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x2000

    .line 56
    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v0, v1, p0}, Lbytekn/foundation/io/file/FileInputStream;->read([BII)I

    move-result v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_16
    const/16 v7, 0x64

    if-lez v2, :cond_42

    .line 59
    invoke-virtual {p2, v0, v1, v2}, Lbytekn/foundation/io/file/FileOutputStream;->write([BII)V

    int-to-long v8, v2

    add-long/2addr v5, v8

    cmp-long v2, v5, p3

    if-gez v2, :cond_3d

    cmp-long v2, p3, v3

    if-lez v2, :cond_3d

    if-eqz p5, :cond_3d

    long-to-float v2, v5

    long-to-float v8, p3

    div-float/2addr v2, v8

    int-to-float v7, v7

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p5, v2, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    .line 64
    :cond_3d
    invoke-virtual {p1, v0, v1, p0}, Lbytekn/foundation/io/file/FileInputStream;->read([BII)I

    move-result v2

    goto :goto_16

    :cond_42
    if-eqz p5, :cond_52

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p5, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    .line 68
    :cond_52
    invoke-virtual {p2}, Lbytekn/foundation/io/file/FileOutputStream;->flush()V

    .line 69
    invoke-virtual {p2}, Lbytekn/foundation/io/file/FileOutputStream;->close()V

    return-wide v5
.end method

.method public final copyStreamAndGetMd5(Lbytekn/foundation/io/file/FileInputStream;Lbytekn/foundation/io/file/FileOutputStream;JLkotlin/jvm/functions/Function2;)Ljava/lang/String;
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    const-string v5, "source"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "sink"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v5, Lbytekn/foundation/encryption/MD5;

    invoke-direct {v5}, Lbytekn/foundation/encryption/MD5;-><init>()V

    const/16 v6, 0x2000

    .line 77
    new-array v7, v6, [B

    const/4 v8, 0x0

    .line 79
    invoke-virtual {v0, v7, v8, v6}, Lbytekn/foundation/io/file/FileInputStream;->read([BII)I

    move-result v9

    const-wide/16 v12, 0x0

    :goto_22
    const/16 v14, 0x64

    if-lez v9, :cond_53

    .line 81
    invoke-virtual {v1, v7, v8, v9}, Lbytekn/foundation/io/file/FileOutputStream;->write([BII)V

    const-wide/16 v15, 0x0

    int-to-long v10, v9

    add-long/2addr v12, v10

    .line 83
    invoke-virtual {v5, v7, v8, v9}, Lbytekn/foundation/encryption/Hasher;->update([BII)Lbytekn/foundation/encryption/Hasher;

    cmp-long v9, v12, v2

    if-gez v9, :cond_4e

    cmp-long v9, v2, v15

    if-lez v9, :cond_4e

    if-eqz v4, :cond_4e

    long-to-float v9, v12

    long-to-float v10, v2

    div-float/2addr v9, v10

    int-to-float v10, v14

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 86
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/Unit;

    .line 88
    :cond_4e
    invoke-virtual {v0, v7, v8, v6}, Lbytekn/foundation/io/file/FileInputStream;->read([BII)I

    move-result v9

    goto :goto_22

    :cond_53
    if-eqz v4, :cond_63

    .line 92
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 93
    :cond_63
    invoke-virtual {v5}, Lbytekn/foundation/encryption/Hasher;->digest()[B

    move-result-object v0

    .line 94
    invoke-virtual {v1}, Lbytekn/foundation/io/file/FileOutputStream;->flush()V

    .line 95
    invoke-virtual {v1}, Lbytekn/foundation/io/file/FileOutputStream;->close()V

    .line 96
    invoke-static {v0}, Lbytekn/foundation/encryption/Hash;->getHex-impl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final delete(Lbytekn/foundation/io/file/FilePathComponent;)Z
    .registers 10

    if-eqz p1, :cond_52

    .line 199
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v0, p1}, Lbytekn/foundation/io/file/FileManager;->remove(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 201
    invoke-virtual {v0, p1}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 202
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "FileUtils"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 203
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_dirty"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v2}, Lcom/ss/ugc/effectplatform/util/FileUtils;->rename(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_51
    return v1

    :cond_52
    const/4 p0, 0x0

    return p0
.end method

.method public final delete(Ljava/lang/String;)Z
    .registers 10

    if-eqz p1, :cond_46

    .line 210
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v0, p1}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 212
    invoke-virtual {v0, p1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 213
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "FileUtils"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_dirty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/ss/ugc/effectplatform/util/FileUtils;->rename(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_45
    return v1

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method public final getFileSize(Ljava/lang/String;)J
    .registers 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_5f

    .line 25
    sget-object p0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileManager;->file(Ljava/lang/String;)Lbytekn/foundation/io/file/FileMeta;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 27
    invoke-virtual {v2}, Lbytekn/foundation/io/file/FileMeta;->getType()Lbytekn/foundation/io/file/FileType;

    move-result-object v3

    sget-object v4, Lbytekn/foundation/io/file/FileType;->Directory:Lbytekn/foundation/io/file/FileType;

    if-ne v3, v4, :cond_54

    .line 28
    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileManager;->readDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_53

    .line 30
    check-cast p0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v2, v0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbytekn/foundation/io/file/FileMeta;

    .line 31
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FileMeta;->getType()Lbytekn/foundation/io/file/FileType;

    move-result-object v4

    sget-object v5, Lbytekn/foundation/io/file/FileType;->Directory:Lbytekn/foundation/io/file/FileType;

    if-ne v4, v5, :cond_44

    .line 32
    sget-object v4, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    invoke-virtual {p1}, Lbytekn/foundation/io/file/FileMeta;->getAbsolutePath()Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p1

    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/ss/ugc/effectplatform/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_50

    .line 34
    :cond_44
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FileMeta;->getSize()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_50

    :cond_4f
    move-wide v4, v0

    :goto_50
    add-long/2addr v2, v4

    goto :goto_21

    :cond_52
    return-wide v2

    :cond_53
    return-wide v0

    .line 38
    :cond_54
    invoke-virtual {v2}, Lbytekn/foundation/io/file/FileMeta;->getSize()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_5f

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_5f
    return-wide v0
.end method

.method public final rename(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    const-string p0, "destPath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_22

    .line 142
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v0, p1, p2}, Lbytekn/foundation/io/file/FileManager;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz p3, :cond_20

    .line 144
    new-instance p0, Lbytekn/foundation/io/file/FilePathComponent;

    invoke-direct {p0, p1}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    new-instance p1, Lbytekn/foundation/io/file/FilePathComponent;

    invoke-direct {p1, p2}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lbytekn/foundation/io/file/FileManager;->renameFile(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result p0

    :cond_20
    return p0

    :cond_21
    const/4 p0, 0x1

    :cond_22
    return p0
.end method

.method public final streamToFile(Ljava/lang/String;Lbytekn/foundation/io/file/FileInputStream;JLkotlin/jvm/functions/Function2;)J
    .registers 15

    const-string p0, "outFilePath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inputStream"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object p0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream$default(Lbytekn/foundation/io/file/FileManager;Ljava/lang/String;ZILjava/lang/Object;)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 48
    sget-object v3, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    move-object v4, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/ss/ugc/effectplatform/util/FileUtils;->copyStream(Lbytekn/foundation/io/file/FileInputStream;Lbytekn/foundation/io/file/FileOutputStream;JLkotlin/jvm/functions/Function2;)J

    :cond_1d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    const-string/jumbo v2, "write effect: "

    const-string/jumbo v4, "writeEffect"

    const-string/jumbo v5, "zipFilePath"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "unzipFileFolderPath"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_132

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    goto/16 :goto_132

    .line 154
    :cond_27
    const-string v5, "_tmp"

    invoke-virtual {v1, v3, v5}, Lcom/ss/ugc/effectplatform/util/FileUtils;->addPathSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_132

    .line 155
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_37

    goto/16 :goto_132

    .line 158
    :cond_37
    :try_start_37
    invoke-virtual {v1, v5}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 159
    sget-object v6, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v6, v0, v5}, Lbytekn/foundation/io/file/FileManager;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 160
    invoke-virtual {v1, v5}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Ljava/lang/String;)Z

    return v7

    :catch_46
    move-exception v0

    move-object v2, v5

    goto/16 :goto_127

    .line 164
    :cond_4a
    sget-object v0, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ss/ugc/effectplatform/util/StringUtilKt;->joinFileSeperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "effect_platform_children.tag"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_65} :catch_46

    .line 167
    :try_start_65
    invoke-virtual {v6, v5}, Lbytekn/foundation/io/file/FileManager;->getFileChildrenList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_95

    check-cast v0, Ljava/lang/Iterable;

    .line 1360
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 223
    check-cast v11, Ljava/lang/String;

    .line 167
    invoke-static {v11, v5}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :catch_91
    move-exception v0

    goto :goto_f5

    :cond_93
    move-object v13, v10

    goto :goto_96

    :cond_95
    move-object v13, v6

    :goto_96
    if-eqz v13, :cond_b8

    .line 169
    sget-object v11, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    const/16 v20, 0x3f

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v13

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v13, v0

    invoke-static/range {v11 .. v17}, Lbytekn/foundation/io/file/FileManager;->writeFile$default(Lbytekn/foundation/io/file/FileManager;Ljava/lang/String;Ljava/lang/String;ZLbytekn/foundation/io/file/ContentEncoding;ILjava/lang/Object;)J

    goto :goto_b9

    :cond_b8
    move-object v10, v13

    .line 171
    :goto_b9
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " children count: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_d5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_d5
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " time cost: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {v6}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_f3} :catch_91

    :goto_f3
    move-object v2, v5

    goto :goto_114

    .line 173
    :goto_f5
    :try_start_f5
    sget-object v6, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " children tag file failed!"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v4, v2, v0}, Lbytekn/foundation/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v0, v12}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_113} :catch_46

    goto :goto_f3

    :goto_114
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 176
    :try_start_117
    invoke-static/range {v1 .. v6}, Lcom/ss/ugc/effectplatform/util/FileUtils;->rename$default(Lcom/ss/ugc/effectplatform/util/FileUtils;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x1

    return v0

    .line 179
    :cond_11f
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Ljava/lang/String;)Z

    .line 180
    invoke-virtual {v1, v3}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Ljava/lang/String;)Z
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_125} :catch_126

    return v7

    :catch_126
    move-exception v0

    .line 182
    :goto_127
    :try_start_127
    sget-object v1, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Ljava/lang/String;)Z
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12c} :catch_12c

    .line 183
    :catch_12c
    :try_start_12c
    sget-object v1, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    invoke-virtual {v1, v3}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Ljava/lang/String;)Z
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_131} :catch_131

    .line 184
    :catch_131
    throw v0

    :cond_132
    :goto_132
    return v7
.end method
