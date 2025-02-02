// This is a temporary constants file related to all strings
//
// Even if the v1 for memo will only be available in ptBR, splitting random strings throughout the code will make it
// hard when we decide to support multiple locales.
//
// Also, when new locales are added to the application, we can still maintain a single point of entry for all strings
// just like this file, but we have to consider that we will possibly need access to the BuildContext, as this is where
// the runtime locale is determined.

import 'package:memo/application/view-models/home/collections_vm.dart';
import 'package:memo/application/view-models/settings/settings_vm.dart';
import 'package:memo/domain/enums/memo_difficulty.dart';
import 'package:memo/domain/enums/resource_type.dart';

//
// Collections
//
const collectionsNavigationTab = 'Coleções';
const progressNavigationTab = 'Progresso';

const collectionsExploreTab = 'Explorar';
const collectionsReviewTab = 'Revisar';

const collectionsSectionHeaderSeeAll = 'Ver todos';

String collectionsEmptySegment(CollectionsSegment segment) {
  switch (segment) {
    case CollectionsSegment.explore:
      return 'Parabéns, você explorou todas as coleções!\n\n'
          'Você ainda pode aperfeiçoar seu aprendizado na aba de "$collectionsReviewTab".';
    case CollectionsSegment.review:
      return 'Você ainda não tem nenhuma coleção para revisar.\n\n'
          'Uma coleção só entra em revisão após terminar todos os seus respectivos memos pelo menos uma vez.';
  }
}

//
// Progress
//
const progressTotalStudyTime = 'Totais de estudos';
const progressTotalMemos = 'Memos completados';

//
// Details
//
const details = 'Detalhes';
const detailsDescription = 'Descrição';
String detailsTotalMemos(int memos) => '$memos memos';
const detailsResources = 'Materiais de apoio';
const detailsResourcesWarning =
    'Cuidado, estes materiais são referências para outros sites que não estão sob nosso controle';
const detailsStudyNow = 'Estudar agora';

//
// Execution
//
const executionQuestion = 'Questão';
const executionAnswer = 'Resposta';

const executionNext = 'Próxima';
const executionCheckAnswer = 'Ver resposta';

const executionDiscardStudy = 'Descartar Estudo';
const executionDiscardStudyDescription =
    'Se você encerrar seu estudo, perderá todo o seu progresso.\nDeseja prosseguir?';

const executionYourPerformance = 'Seu desempenho';
const executionBackToCollections = 'Voltar para as coleções';

const executionWellDone = '## Muito Bem';
const executionImprovedKnowledgeDescription = 'Você acaba de aprimorar seu conhecimento em:';

const executionWhatIsRecallLevel = 'O que é o nível de fixação?';

String executionLinearIndicatorCompletionLabel(String completionDescription) =>
    'Indicador linear demonstrando que o nível de conclusão desta sessão de aprendizado está em $completionDescription';

//
// Settings
//
const settings = 'Ajustes';
String settingsDescriptionForSection(SettingsSection section) {
  switch (section) {
    case SettingsSection.legal:
      return 'Legal';
    case SettingsSection.help:
      return 'Ajuda';
    case SettingsSection.sponsors:
      return 'Patrocinadores';
    case SettingsSection.organizers:
      return 'Organizadores';
  }
}

String settingsUrlForNamedLink(NamedLinkSettings link) {
  switch (link) {
    // TODO(matuella): Add link when available
    case NamedLinkSettings.termsAndPrivacyPolicy:
      return 'https://google.com.br/';
    case NamedLinkSettings.faq:
      return faqUrl;
  }
}

String settingsDescriptionForNamedLink(NamedLinkSettings link) {
  switch (link) {
    case NamedLinkSettings.termsAndPrivacyPolicy:
      return 'Termos e Política de Privacidade';
    case NamedLinkSettings.faq:
      return 'Perguntas Frequentes';
  }
}

String settingsDescriptionForNamedCustom(NamedCustomSettings custom) {
  switch (custom) {
    case NamedCustomSettings.licenses:
      return 'Licenças';
  }
}

//
// Application-wide strings
//
const yes = 'Sim';
const no = 'Não';

const recallLevel = 'Nível de Fixação';

String answeredMemos(MemoDifficulty difficulty) => 'Memos marcados como ${memoDifficulty(difficulty).toLowerCase()}';

String collectionCompletionProgress({required int current, required int target}) =>
    '$current / $target memos completados';

String circularIndicatorMemoAnswersLabel(MemoDifficulty difficulty) =>
    'Indicador circular demonstrando o percentual de memos respondidos como ${memoDifficulty(difficulty).toLowerCase()}';

String linearIndicatorCollectionRecallLabel(String recallDescription) =>
    'Indicador linear demonstrando que o nível de fixação da coleção está em $recallDescription';

String linearIndicatorCollectionCompletionLabel(String completionDescription) =>
    'Indicador linear demonstrando que o nível de conclusão da coleção está em $completionDescription';

String memoDifficultyEmoji(MemoDifficulty difficulty) {
  switch (difficulty) {
    case MemoDifficulty.easy:
      return squintingFaceWithTongue;
    case MemoDifficulty.medium:
      return expressionlessFace;
    case MemoDifficulty.hard:
      return faceScreamingInFear;
  }
}

String resourceEmoji(ResourceType resource) {
  switch (resource) {
    case ResourceType.article:
      return memo;
    case ResourceType.book:
      return books;
    case ResourceType.video:
      return television;
    case ResourceType.unknown:
      return link;
  }
}

String memoDifficulty(MemoDifficulty difficulty) {
  switch (difficulty) {
    case MemoDifficulty.easy:
      return 'Fácil';
    case MemoDifficulty.medium:
      return 'Médio';
    case MemoDifficulty.hard:
      return 'Difícil';
  }
}

//
// Symbols
//
const percentSymbol = '%';
const hoursSymbol = 'h';
const minutesSymbol = 'm';

//
// Unicode Emojis
//
// The list below follows the [unicode.org spec](https://unicode.org/emoji/charts/full-emoji-list.html), so that we
// don't expose vendor-specific emojis, thus failing to render on some specific platforms.
const memo = '\u{1F4DD}';
const books = '\u{1F4DA}';
const television = '\u{1F4FA}';
const link = '\u{1F517}';

const squintingFaceWithTongue = '\u{1F61D}';
const expressionlessFace = '\u{1F611}';
const faceScreamingInFear = '\u{1F631}';

const partyPopper = '\u{1F389}';

//
// URLs
//
const faqUrl = 'https://github.com/olmps/memo/blob/main/FAQ_ptBR.md';
