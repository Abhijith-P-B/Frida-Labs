.class public final Lcom/ad2001/frida0xb/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ad2001/frida0xb/MainActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0005\u001a\u00020\u0006H\u0086 J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/ad2001/frida0xb/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "binding",
        "Lcom/ad2001/frida0xb/databinding/ActivityMainBinding;",
        "getFlag",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/ad2001/frida0xb/MainActivity$Companion;


# instance fields
.field private binding:Lcom/ad2001/frida0xb/databinding/ActivityMainBinding;


# direct methods
.method public static synthetic $r8$lambda$wOrBpVTax3NhKiw_atfkQ2tf6LI(Lcom/ad2001/frida0xb/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ad2001/frida0xb/MainActivity;->onCreate$lambda$0(Lcom/ad2001/frida0xb/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ad2001/frida0xb/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ad2001/frida0xb/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ad2001/frida0xb/MainActivity;->Companion:Lcom/ad2001/frida0xb/MainActivity$Companion;

    .line 35
    nop

    .line 36
    const-string v0, "frida0xb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/ad2001/frida0xb/MainActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/ad2001/frida0xb/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/ad2001/frida0xb/MainActivity;->getFlag()V

    .line 22
    return-void
.end method


# virtual methods
.method public final native getFlag()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 14
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/ad2001/frida0xb/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/ad2001/frida0xb/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/ad2001/frida0xb/databinding/ActivityMainBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ad2001/frida0xb/MainActivity;->binding:Lcom/ad2001/frida0xb/databinding/ActivityMainBinding;

    .line 18
    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/ad2001/frida0xb/databinding/ActivityMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ad2001/frida0xb/MainActivity;->setContentView(Landroid/view/View;)V

    .line 19
    sget v0, Lcom/ad2001/frida0xb/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/ad2001/frida0xb/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    .line 20
    .local v0, "btn":Landroid/widget/Button;
    new-instance v1, Lcom/ad2001/frida0xb/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ad2001/frida0xb/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ad2001/frida0xb/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
