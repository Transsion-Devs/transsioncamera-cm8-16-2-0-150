.class public Lorg/apache/commons/io/monitor/FileEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

.field private static final serialVersionUID:J = -0x22c5e8fed07c1d41L


# instance fields
.field private children:[Lorg/apache/commons/io/monitor/FileEntry;

.field private directory:Z

.field private exists:Z

.field private final file:Ljava/io/File;

.field private lastModified:J

.field private length:J

.field private name:Ljava/lang/String;

.field private final parent:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileEntry;

    sput-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_10

    .line 81
    iput-object p2, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    .line 82
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void

    .line 79
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChildren()[Lorg/apache/commons/io/monitor/FileEntry;
    .registers 1

    .line 162
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    .line 180
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    return-object p0
.end method

.method public getLastModified()J
    .registers 3

    .line 208
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    return-wide v0
.end method

.method public getLength()J
    .registers 3

    .line 227
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-wide v0
.end method

.method public getLevel()I
    .registers 1

    .line 151
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getLevel()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 189
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParent()Lorg/apache/commons/io/monitor/FileEntry;
    .registers 1

    .line 142
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->parent:Lorg/apache/commons/io/monitor/FileEntry;

    return-object p0
.end method

.method public isDirectory()Z
    .registers 1

    .line 265
    iget-boolean p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return p0
.end method

.method public isExists()Z
    .registers 1

    .line 246
    iget-boolean p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return p0
.end method

.method public newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .registers 3

    .line 133
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-object v0
.end method

.method public refresh(Ljava/io/File;)Z
    .registers 15

    .line 102
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    .line 103
    iget-wide v1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 104
    iget-boolean v3, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    .line 105
    iget-wide v4, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v8}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    const/4 v8, 0x1

    if-eqz v6, :cond_26

    .line 110
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_26

    move v6, v8

    goto :goto_27

    :cond_26
    move v6, v7

    :goto_27
    iput-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    const-wide/16 v9, 0x0

    .line 112
    :try_start_2b
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v6, :cond_34

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->lastModified(Ljava/io/File;)J

    move-result-wide v11

    goto :goto_35

    :cond_34
    move-wide v11, v9

    :goto_35
    iput-wide v11, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_38

    goto :goto_3a

    .line 114
    :catch_38
    iput-wide v9, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    .line 116
    :goto_3a
    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v6, :cond_46

    iget-boolean v6, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-nez v6, :cond_46

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    :cond_46
    iput-wide v9, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    .line 119
    iget-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    if-ne p1, v0, :cond_5a

    iget-wide v11, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    cmp-long p1, v11, v1

    if-nez p1, :cond_5a

    iget-boolean p0, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    if-ne p0, v3, :cond_5a

    cmp-long p0, v9, v4

    if-eqz p0, :cond_5b

    :cond_5a
    move v7, v8

    :cond_5b
    return v7
.end method

.method public varargs setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->children:[Lorg/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public setDirectory(Z)V
    .registers 2

    .line 274
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->directory:Z

    return-void
.end method

.method public setExists(Z)V
    .registers 2

    .line 256
    iput-boolean p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->exists:Z

    return-void
.end method

.method public setLastModified(J)V
    .registers 3

    .line 218
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->lastModified:J

    return-void
.end method

.method public setLength(J)V
    .registers 3

    .line 236
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->length:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void
.end method
