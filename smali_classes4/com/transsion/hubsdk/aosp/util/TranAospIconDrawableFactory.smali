.class public Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;


# static fields
.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-string v0, "android.util.IconDrawableFactory"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 134
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBadgedIcon"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 135
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 137
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 138
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 139
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_34

    .line 140
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_34
    return-object v1
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 160
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 161
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p0, p3, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 162
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBadgedIcon"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 163
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 165
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3a

    .line 166
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_3a
    return-object p3
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 147
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 148
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 149
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/pm/PackageItemInfo;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBadgedIcon"

    invoke-static {p1, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 150
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 152
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3c

    .line 153
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_3c
    return-object v0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 231
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 232
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    filled-new-array {p1, p5}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p5, 0x0

    invoke-static {p0, p5, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 233
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/pm/ApplicationInfo;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/content/pm/PackageItemInfo;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBadgedIcon"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 234
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 236
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_42

    .line 237
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_42
    return-object p5
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 23
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBadgedIcon"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "newInstance"

    invoke-static {v1, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 26
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 28
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_36

    .line 29
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_36
    return-object v2
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {v0, p2, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 52
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBadgedIcon"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 55
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3c

    .line 56
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_3c
    return-object p2
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v2, Landroid/content/pm/ApplicationInfo;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/content/pm/PackageItemInfo;

    filled-new-array {v4, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBadgedIcon"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 42
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3e

    .line 43
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_3e
    return-object v1
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 121
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 122
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p0, p4}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p4, 0x0

    invoke-static {v0, p4, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 123
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/pm/PackageItemInfo;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBadgedIcon"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 126
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_44

    .line 127
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_44
    return-object p4
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 189
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 190
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 191
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/graphics/Bitmap;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getGlobalThemedIcon"

    invoke-static {p1, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_37

    .line 196
    :cond_28
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 197
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_37

    .line 198
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_37
    :goto_37
    return-object v0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 205
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 206
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 207
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getGlobalThemedIcon"

    invoke-static {p1, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_2a

    goto :goto_39

    .line 212
    :cond_2a
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 213
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_39

    .line 214
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_39
    :goto_39
    return-object v0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 79
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 80
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 81
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getGlobalThemedIcon"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_2a

    goto :goto_39

    .line 86
    :cond_2a
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 87
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_39

    .line 88
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_39
    :goto_39
    return-object v1
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 95
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 97
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getGlobalThemedIcon"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_3b

    .line 102
    :cond_2c
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 103
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3b

    .line 104
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_3b
    :goto_3b
    return-object v1
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 173
    sget-object p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 174
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 175
    sget-object p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v0, Landroid/content/pm/PackageItemInfo;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUnbadgedIcon"

    invoke-static {p1, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_30

    goto :goto_3f

    .line 180
    :cond_30
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p0, p3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 181
    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3f

    .line 182
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_3f
    :goto_3f
    return-object p2
.end method

.method public getUnbadgedIcon(ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 63
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newInstance"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 64
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 65
    sget-object v0, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/content/pm/PackageItemInfo;

    const-class v2, Landroid/content/pm/ApplicationInfo;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUnbadgedIcon"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_41

    .line 70
    :cond_32
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 71
    instance-of p2, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_41

    .line 72
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_41
    :goto_41
    return-object p1
.end method
