.class public abstract Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DefaultResource"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 12
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getMakeupItemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 29
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultResource;->getMakeupItemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getMakeupItemPath,result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getMakeupParentPath()Ljava/lang/String;
    .registers 4

    .line 35
    sget-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultResource;->getResourcePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMakeupParentPath,path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMakeupPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 23
    sget-object p0, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultResource;->getMakeupPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/DefaultResource;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  getMakeupPath  result = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method
