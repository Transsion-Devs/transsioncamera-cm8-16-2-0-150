.class public final Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field public mIndex:Ljava/lang/String;

.field public mLevel:Ljava/lang/String;

.field public mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFilterItemInfo"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mLevel:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mValue:I

    return-void
.end method

.method public static toJson(Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;)Ljava/lang/String;
    .registers 2

    .line 26
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 27
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;
    .registers 6

    .line 31
    const-string v0, "fromJson: "

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    .line 34
    :cond_a
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    :try_start_f
    const-class v3, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    invoke-virtual {v1, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    .line 37
    iget-object v3, v1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    iget-object v3, v1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mLevel:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_21} :catch_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_22

    return-object v1

    :catch_22
    move-exception v1

    goto :goto_26

    :catch_24
    move-exception v1

    goto :goto_47

    .line 45
    :goto_26
    sget-object v3, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2

    .line 41
    :goto_47
    sget-object v2, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", NumberFormatException: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    new-instance p0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    const-string v0, "100"

    const/4 v1, 0x0

    const-string v2, "0"

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method
