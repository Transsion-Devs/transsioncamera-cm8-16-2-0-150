.class public final Lcom/ss/android/vesdk/VEDebugSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEDebugSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/vesdk/VEDebugSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VEDebugSettings;-><init>(Lcom/ss/android/vesdk/VEDebugSettings$1;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEDebugSettings$Builder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VEDebugSettings;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/VEDebugSettings$Builder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/VEDebugSettings;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDebugSettings$Builder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    return-object p0
.end method

.method public setEnableImageDump(Z)Lcom/ss/android/vesdk/VEDebugSettings$Builder;
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/ss/android/vesdk/VEDebugSettings$Builder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    # setter for: Lcom/ss/android/vesdk/VEDebugSettings;->mEnableImageDump:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEDebugSettings;->access$102(Lcom/ss/android/vesdk/VEDebugSettings;Z)Z

    return-object p0
.end method

.method public setImageDumpDir(Ljava/lang/String;)Lcom/ss/android/vesdk/VEDebugSettings$Builder;
    .registers 8

    .line 114
    iget-object v0, p0, Lcom/ss/android/vesdk/VEDebugSettings$Builder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    # setter for: Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpDir:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEDebugSettings;->access$302(Lcom/ss/android/vesdk/VEDebugSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    iget-object v2, p0, Lcom/ss/android/vesdk/VEDebugSettings$Builder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "capture_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/ss/android/vesdk/VEDebugSettings;->mCaptureDir:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VEDebugSettings;->access$402(Lcom/ss/android/vesdk/VEDebugSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/ss/android/vesdk/VEDebugSettings$Builder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "preview_"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # setter for: Lcom/ss/android/vesdk/VEDebugSettings;->mPreviewDir:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VEDebugSettings;->access$502(Lcom/ss/android/vesdk/VEDebugSettings;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setImageDumpType(Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;)Lcom/ss/android/vesdk/VEDebugSettings$Builder;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/ss/android/vesdk/VEDebugSettings$Builder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    # setter for: Lcom/ss/android/vesdk/VEDebugSettings;->mImageDumpType:Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEDebugSettings;->access$202(Lcom/ss/android/vesdk/VEDebugSettings;Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;)Lcom/ss/android/vesdk/VEDebugSettings$ImageDumpType;

    return-object p0
.end method
