.class public Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFragmentAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospPreferenceFragment"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-string v0, "android.preference.PreferenceFragment"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFragment;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListView(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;
    .registers 5

    const/4 p0, 0x0

    .line 30
    :try_start_1
    sget-object v0, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFragment;->sClassName:Ljava/lang/Class;

    const-string v1, "getListView"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 32
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 33
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_34

    .line 34
    check-cast p1, Landroid/widget/ListView;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    return-object p1

    :catchall_1d
    move-exception p1

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListView fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-object p0
.end method
